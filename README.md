# duanecr_TAZ_6_Archim_Klipper
Configuration files for Lulzbot TAZ 6 using an Archim 2 board with a BTT PAD 7 for Klipper

Klipper Links

https://www.klipper3d.org/

https://github.com/Klipper3d/klipper

https://github.com/Klipper3d/klipper/tree/master/docs

Mainsail documentation
https://docs.mainsail.xyz/

**Initial Setup and Configuration**
• Install Klipper on a device if needed
○ Installation - Klipper documentation (klipper3d.org)
https://www.klipper3d.org/Installation.html
• Install Moonraker
	○ Installation - Moonraker
	https://moonraker.readthedocs.io/en/latest/installation/
• Install Klipperscreen for touchscreens
	○ Installation - KlipperScreen
	https://klipperscreen.readthedocs.io/en/latest/Installation/#auto-install
• Install Lulzbot version of Cura
	○ https://www.lulzbot.com/cura
• Verify printer bed is clean and empty
• Turn on printer
• Turn on device running Klipper
• Verify amount of filament on spool
• Verify thickness of filament for imperfections
• Connect web browser to http://taz.local and verify connectivity
• Open Cura and run through install steps for local printer
• Install Moonraker plugin for Cura
• Connect to Klipper
• Set the theme settings
	○ Lulzbot Lime Green
		§ rgb(194, 215, 53)
		○ Mainsail Quicktips | Themes
	https://youtu.be/kbSfLQtl4tA?si=HL7WomTxeTPDtKlo
	• Check E-Steps by running ??? command.
	• Use Orca calibration to check all of the settings
		○ Calibration · SoftFever/OrcaSlicer Wiki (github.com)
  		https://github.com/SoftFever/OrcaSlicer/wiki/Calibration

**Cura Print Settings**
Build plate adhesion type, determine whether to print on raft, skirt, or brim
Generate support or tree support
Infill density
Uncheck "keep heating" for build plate in Material section
Change "Z Seam Alignment" to shortest or random for round prints
 
**Initial Calibration Sites**
Teaching Tech 3D Printer Calibration (teachingtechyt.github.io)
https://teachingtechyt.github.io/calibration.html
Welcome! | Ellis’ Print Tuning Guide (ellis3dp.com)
https://ellis3dp.com/Print-Tuning-Guide/
 
New Printer Setup
Complete beginner's guide to 3D printing - Assembly, tour, slicing, levelling and first prints
https://youtu.be/T-Z3GmM20JM
 
Verify Extruder E-Steps
Run 100mm of filament through extruder to verify it is correct.  Adjust as needed.
[Teaching Tech 3D Printer Calibration (teachingtechyt.github.io)](https://teachingtechyt.github.io/calibration.html#esteps)

 
Set PID Autotune
[G-Codes - Klipper documentation (klipper3d.org)](https://www.klipper3d.org/G-Codes.html#pid_calibrate_1)
https://www.klipper3d.org/Config_checks.html?h=pid_calibrate#calibrate-pid-settings
PID_CALIBRATE HEATER=<config_name> TARGET=<temperature> [WRITE_FILE=1]
PID_CALIBRATE HEATER=heater_bed TARGET=60
PID_CALIBRATE HEATER=extruder TARGET=205

SAVE_CONFIG

Set Z Offset
Check Z-Offset
[Probe calibration - Klipper documentation (klipper3d.org)](https://www.klipper3d.org/Probe_Calibrate.html?h=z+offset#calibrating-probe-z-offset)
PROBE_CALIBRATE
SAVE_CONFIG
PROBE_ACCURACY

Resonance Compensation
https://www.klipper3d.org/Resonance_Compensation.html

Pressure Advance
https://www.klipper3d.org/Pressure_Advance.html

Bed Mesh Calibration
https://www.klipper3d.org/G-Codes.html#bed_mesh_calibrate
 
Calibration Source Information
https://teachingtechyt.github.io/calibration.html
Retraction calibration code site - http://prahjister.duckdns.org
