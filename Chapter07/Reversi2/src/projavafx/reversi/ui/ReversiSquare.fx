/*
 * Copyright (c) 2009, Pro JavaFX Authors
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 * 1. Redistributions of source code must retain the above copyright notice,
 *    this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 *    this list of conditions and the following disclaimer in the documentation
 *    and/or other materials provided with the distribution.
 * 3. Neither the name of JFXtras nor the names of its contributors may be used
 *    to endorse or promote products derived from this software without
 *    specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * ReversiSquare.fx - Part of the Reversi application example that illustrates
 * dynamic layout of Nodes in a JavaFX user interface utilitizing bind,
 * boxes, and Containers.
 *
 * Developed 2009 by Stephen Chin
 * as a JavaFX Script SDK 1.2 example for the Pro JavaFX book.
 */
package projavafx.reversi.ui;

import javafx.geometry.BoundingBox;
import javafx.animation.transition.FadeTransition;
import javafx.scene.CustomNode;
import javafx.scene.Group;
import javafx.scene.effect.Lighting;
import javafx.scene.effect.light.DistantLight;
import javafx.scene.layout.Resizable;
import javafx.scene.paint.Color;
import javafx.scene.shape.Rectangle;
import projavafx.reversi.model.Cell;
import projavafx.reversi.model.ReversiModel;

/**
 * @author Stephen Chin
 */
public class ReversiSquare extends CustomNode, Resizable, Cell {

  public var model:ReversiModel;

  public var highlight:Boolean on replace {
    highlightTransition.rate = if (highlight) 1 else -1;
    highlightTransition.play();
  }

  var highlightRectangle:Rectangle;

  var highlightTransition = FadeTransition {
    duration: 200ms
    fromValue: 0
    toValue: 1
    node: bind highlightRectangle
  }

  override function getPrefWidth(height) {30.0}
  override function getPrefHeight(width) {30.0}

  override var layoutBounds = bind lazy BoundingBox {
      minX: 0
      minY: 0
      width: width
      height: height
  }

  init {
    onMouseClicked = function(e) {
      model.play(this);
      highlight = false;
    }
    onMouseEntered = function(e) {
      if (model.legalMove(this)) {
        highlight = true;
      }
    }
    onMouseExited = function(e) {
      highlight = false;
    }
  }

  override var cache = true;

  override function create() {
    Group {
      content: [
        Rectangle {
          cache: true
          effect: Lighting {
            light: DistantLight {
              azimuth: -135
              elevation: 30
            }
          }
          width: bind width
          height: bind height
          def legalMoveColor = Color.DODGERBLUE.ofTheWay(Color.BLACK, .3) as Color;
          fill: bind if (model.legalMove(this)) legalMoveColor
                     else Color.BURLYWOOD
        }
        highlightRectangle = Rectangle {
          x: 2
          y: 2
          width: bind width - 4
          height: bind height - 4
          stroke: Color.DODGERBLUE
          fill: null
          strokeWidth: 2
          opacity: 0
        }
      ]
    }
  }
}
