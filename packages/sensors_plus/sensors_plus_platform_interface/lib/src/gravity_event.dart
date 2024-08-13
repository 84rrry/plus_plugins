// Copyright 2024 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

/// Discrete reading from a gravity sensor. Gravity sensors measure the force of gravity
/// on the device in three dimensions.
class GravityEvent {
  /// Constructs an instance with the given [x], [y], and [z] values.
  GravityEvent(this.x, this.y, this.z, this.timestamp);

  /// Gravitational force along the x axis measured in m/s^2.
  ///
  /// When the device is held upright facing the user, positive values mean the
  /// gravitational force is towards the right and negative mean it is towards the left.
  final double x;

  /// Gravitational force along the y axis measured in m/s^2.
  ///
  /// When the device is held upright facing the user, positive values mean the
  /// gravitational force is towards the sky and negative mean it is towards
  /// the ground.
  final double y;

  /// Gravitational force along the z axis measured in m/s^2.
  ///
  /// This uses a right-handed coordinate system. So when the device is held
  /// upright and facing the user, positive values mean the gravitational force
  /// is towards the user and negative mean it is away from them.
  final double z;

  /// Timestamp of the event
  ///
  /// This is the timestamp of the event in microseconds, as provided by the
  /// underlying platform. For Android, this is the uptimeMillis provided by
  /// the SensorEvent. For iOS, this is the timestamp provided by the CMDeviceMotion.
  final DateTime timestamp;

  @override
  String toString() =>
      '[GravityEvent (x: $x, y: $y, z: $z, timestamp: $timestamp)]';
}