# Godot XR OpenXR Tracker

This repository contains a demo project to evaluate the Godot-OpenXR-Vendors hand, body, and face tracking.

There are two main scenes which can be used for testing:

- `body_demo.tscn` tests body/face tracking
- `hand_demo.tscn` tests hand tracking

The left controller AX/BY buttons adjust the Skeleton3D motion_scale property of the bodies or hands.
The right controller AX/BY buttons adjust the XRServer world_scale property of the environment.

Note that in the hands demo, touching the controller buttons will cause OpenXR to switch to controller-mode temporarily and hide the hands. Putting the controllers down for a few seconds will restore hand-tracking and show the hands again.
