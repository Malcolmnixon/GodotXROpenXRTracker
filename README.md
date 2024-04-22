# Godot XR OpenXR Tracker

![GitHub forks](https://img.shields.io/github/forks/Malcolmnixon/GodotXROpenXRTracker?style=plastic)
![GitHub Repo stars](https://img.shields.io/github/stars/Malcolmnixon/GodotXROpenXRTracker?style=plastic)
![GitHub contributors](https://img.shields.io/github/contributors/Malcolmnixon/GodotXROpenXRTracker?style=plastic)
![GitHub](https://img.shields.io/github/license/Malcolmnixon/GodotXROpenXRTracker?style=plastic)

This repository contains a demo project to evaluate Godot OpenXR hand, body, and face tracking.

![OpenXR Preview](/docs/openxr_preview.png)

## Versions

This demo requires Godot 4.3-dev6+ or later.

<sub>NOTE: This requires the [XR Trackers](https://github.com/godotengine/godot/pull/90645) PR which is in the Godot master branch, but no release has been made.</sub>

## Overview

Godot has built-in support for generating [XRHandTracker](https://docs.godotengine.org/en/latest/classes/class_xrhandtracker.html) data from OpenXR, and the [Godot-OpenXR-Vendors](https://github.com/GodotVR/godot_openxr_vendors) extension adds support for [XRBodyTracker](https://docs.godotengine.org/en/latest/classes/class_xrbodytracker.html) and [XRFaceTracker](https://docs.godotengine.org/en/latest/classes/class_xrfacetracker.html).

This data can be used to drive avatars through the [XRHandModifier3D](https://docs.godotengine.org/en/latest/classes/class_xrhandmodifier3d.html), [XRBodyModifier3D](https://docs.godotengine.org/en/latest/classes/class_xrbodymodifier3d.html), and [XRFaceModifier3D](https://docs.godotengine.org/en/latest/classes/class_xrfacemodifier3d.html) nodes.

The demo scenes in this project show how this is achieved.

### Body Demo (default)

![Body Demo](/docs/body_demo.png)

This scene contains two avatars - one worn by the player, and one mirroring the players face and body movements. These avatars are driven by [XRBodyModifier3D](https://docs.godotengine.org/en/latest/classes/class_xrbodymodifier3d.html), and [XRFaceModifier3D](https://docs.godotengine.org/en/latest/classes/class_xrfacemodifier3d.html) nodes.

Scaling can be achieved by picking up and using the VR controllers:

- Left controller AX/BY buttons adjust the Skeleton3D motion_scale property of the bodies or hands.
- Right controller AX/BY buttons adjust the XRServer world_scale property of the environment.

### Hand Demo

![Hand Demo](/docs/hand_demo.png)

This scene contains two hand models worn by the player to demonstrate VR hands that track the players hands. These hand models are driven by two [XRHandModifier3D](https://docs.godotengine.org/en/latest/classes/class_xrhandmodifier3d.html) nodes.

Scaling can be achieved by picking up and using the VR controllers:

- Left controller AX/BY buttons adjust the Skeleton3D motion_scale property of the bodies or hands.
- Right controller AX/BY buttons adjust the XRServer world_scale property of the environment.

Note that touching the controller buttons will cause OpenXR to switch to "Controller-mode" temporarily, which results in the hands being hidden. Putting the controllers down for a few seconds will restore "Hand-Tracking mode" and show the hands again.
