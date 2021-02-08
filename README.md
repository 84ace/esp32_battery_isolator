<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]



<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/84ace/esp32_battery_isolator">
    <img src="images/logo.png" alt="Logo" width="71" height="83">
  </a>

  <h3 align="center">ESP32 Battery Isolator</h3>

  <p align="center">
    Off-road battery management
    <br />
    <a href="https://github.com/84ace/esp32_battery_isolator/wiki"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://github.com/84ace/esp32_battery_isolator/tree/master/board_images">Board Images</a>
    ·
    <a href="https://github.com/84ace/esp32_battery_isolator/issues">Report Bug</a>
    ·
    <a href="https://github.com/84ace/esp32_battery_isolator/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#main-features">Main Features</a></li>
        <li><a href="#whats-missing">What's Missing</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

[![ESP32 Battery Isolator][product-screenshot]](https://github.com/84ace/esp32_battery_isolator/raw/master/enclosure/front_iso.png)

The ESP32 Battery Isolator was created so that I could have better control over battery and load isolation, and because I thought it would be an interesting project that would allow me to learn a few new things. 

I also thought that I should be able to turn the lights off in camp from the comfort of bed, rather than having to turn the lights off and walk to bed in the dark and probably kick my toe.

<!-- MAIN FEATURES -->
## Main Features:
* Dual battery input
* Triple load output
* Charger input (From external MPPT/solar charge controller)
* Current sensors
* Temperature sensor
* 128x32 OLED screen
* Bluetooth (for remote control via phone app)
* WiFi (for debugging)
* USB (micro)
* 30A continuous operation

<!-- WHAT"S MISSING -->
## What's missing:
* A Phone app for remote control / live telemetry

If you would like to contribute an app please contact me via the <a href="https://github.com/84ace/esp32_battery_isolator/tree/master/board_images">issues</a> page.

<!-- GETTING STARTED -->
## Get the Isolator

There are two ways to get started with the ESP32 Battery Isolator, you can either take the easy(er) way and buy a pre-made unit from [here](https://placeholder.com/) or you can send the gerber files off to your favourite fab house, order the components, assemble the board and print the enclosure yourself.

<!-- ROADMAP -->
## Roadmap

See the [open issues](https://github.com/84ace/esp32_battery_isolator/issues) for a list of proposed features (and known issues).

<!-- CONTRIBUTING -->
## Contributing

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

<!-- MADE WITH -->
## Made With:
* [KiCad - Electronic Design Automation Suite](https://kicad.org/)
* [Fusion360 - CAD Software](https://www.autodesk.com.au/products/fusion-360/overview)
* [JLCPCB - PCB Fabrication Manufacturer](https://jlcpcb.com/)


<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.



<!-- CONTACT -->
## Contact

84ace - [@Racea_Quigg](https://twitter.com/@RaceaQuigg)

Project Link: [https://github.com/84ace/esp32_battery_isolator](https://github.com/84ace)


<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/84ace/esp32_battery_isolator.svg?style=for-the-badge
[contributors-url]: https://github.com/84ace/esp32_battery_isolator/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/84ace/esp32_battery_isolator.svg?style=for-the-badge
[forks-url]: https://github.com/84ace/esp32_battery_isolator/network/members
[stars-shield]: https://img.shields.io/github/stars/84ace/esp32_battery_isolator.svg?style=for-the-badge
[stars-url]: https://github.com/84ace/esp32_battery_isolator/stargazers
[issues-shield]: https://img.shields.io/github/issues/84ace/esp32_battery_isolator.svg?style=for-the-badge
[issues-url]: https://github.com/84ace/esp32_battery_isolator/issues
[license-shield]: https://img.shields.io/github/license/84ace/esp32_battery_isolator.svg?style=for-the-badge
[license-url]: https://github.com/84ace/esp32_battery_isolator/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/acea-quigg-2007036b/
[product-screenshot]: enclosure/front_iso.png