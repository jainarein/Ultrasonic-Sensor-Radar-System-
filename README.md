# Ultrasonic Sensor Radar System 📡

A physically implemented **Ultrasonic Sensor Radar System** developed using an ultrasonic distance sensor, a servo motor, and a microcontroller, with **real-time radar visualization built using Processing**.

The system scans a defined angular range, measures object distance using ultrasonic time-of-flight, and visualizes the data as a radar-style display on a connected computer.

---

## 🚀 Features
- Real-time distance measurement using ultrasonic sensing
- Servo-based angular scanning (radar sweep)
- Bidirectional sweep for continuous coverage
- Live serial communication between microcontroller and PC
- Real-time radar visualization using Processing
- Video demonstration of the complete working system

---

## 🛠️ Hardware Components
- Microcontroller (Arduino-compatible)
- Ultrasonic Sensor (HC-SR04)
- Servo Motor
- Jumper wires
- External power supply

---

## 💻 Software Used
- Arduino IDE (firmware development)
- Processing (radar visualization)
- Serial communication over USB

---

## ⚙️ System Workflow
1. Servo motor rotates between 15° and 165°
2. Ultrasonic sensor emits trigger pulses
3. Echo duration is measured using time-of-flight
4. Distance is calculated from echo time
5. Angle and distance data are sent via Serial communication
6. Processing reads serial data and renders a real-time radar display

---

## 📐 Distance Calculation
Distance is calculated using the ultrasonic time-of-flight equation:

Distance (cm) = (Echo_Duration × Speed_of_Sound) / 2

Where:
- Speed of sound ≈ 0.034 cm/µs
- Division by 2 accounts for the round-trip travel of the ultrasonic wave

---

## 📂 Project Structure
Ultrasonic-Sensor-Radar/  
├── ultrasonic_radar.ino  
├── radar_visualization.pde  
├── README.md  
├── demo/  
&nbsp;&nbsp;&nbsp;&nbsp;└── radar_demo.mp4  

---

## ▶️ How to Run

### Arduino Code
1. Connect the ultrasonic sensor and servo motor to the microcontroller
2. Open `ultrasonic_radar.ino` in Arduino IDE
3. Select the correct board and COM port
4. Upload the code
5. Open Serial Monitor at **9600 baud rate** to verify data output

### Processing Visualization
1. Open `radar_visualization.pde` in Processing
2. Update the COM port name if required
3. Run the sketch
4. Observe real-time radar visualization on the screen

---

## 📌 Applications
- Object detection systems
- Obstacle avoidance
- Radar simulation for learning
- Robotics and embedded systems projects

---

## 📌 Limitations
- Limited sensing range of ultrasonic sensors
- Accuracy affected by object shape and surface
- Single-object detection per scan cycle

---

## 🚧 Future Improvements
- Noise filtering for distance measurements
- Enhanced radar UI and scaling
- Multi-sensor radar array
- Wireless data transmission
- Integration with web-based dashboards

---

## 📷 Demo & Visualization
The radar visualization is implemented using Processing and communicates with the microcontroller via serial communication.

A working demo video of the system is available in the `demo/` folder.

---

## 📄 License
This project is open-source and intended for educational and learning purposes.
