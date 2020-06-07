import qwiic_bme280
import time
import sys

def runExample():
    mySensor = qwiic_bme280.QwiicBme280()
    mySensor.begin()
    tempC = "%.2f" % mySensor.temperature_celsius

    print("temp_ambient", tempC)

if __name__ == '__main__':
    try:
        runExample()
    except (KeyboardInterrupt, SystemExit) as exErr:
        print("\nEnding Example 1")
        sys.exit(0)

