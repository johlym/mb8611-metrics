# MB8611 Metrics (WIP)

A small bit of Ruby code that queries a local Motorola MB8611 modem (and likely many other Motorola modems) for their metrics. This code does not require authentication. It uses the long deprecated and almost entirely forgotton HNAP protocol. Most networking gear threw this protocol by the wayside years ago, but Motorol still uses it in their devices.

## Requirements

## Usage

## Questions

**Does this requre a vulernability or hack?**
This code does not exploit any holes or security flaws. The request we're making can the modem can be queried without authentication. 

**Tell me more about HNAP.**
The HNAP protocol supports other functionality such as rebooting using authenticated HNAP requests. That is out of the scope of this repository. Regardless, the HNAP protocol is proprietary and documentation for it has rarely ever existed. Morotola has locked down the generic HNAP response to have the device display all of the supported requests, at so far as I have been able to understand.