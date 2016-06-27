#! /usr/bin/env python2
from subprocess import check_output

def get_pass_gp():
    return check_output("gpg --no-tty -dq /home/andrew/.passwd/gmail-pers.gpg", shell=True).strip("\n")
def get_pass_mtu():
    return check_output("gpg --no-tty -dq /home/andrew/.passwd/mtu.gpg", shell=True).strip("\n")
def get_pass_work():
    return check_output("gpg --no-tty -dq /home/andrew/.passwd/work.gpg", shell=True).strip("\n")
def get_pass_p():
    return check_output("gpg --no-tty -dq /home/andrew/.passwd/p.gpg", shell=True).strip("\n")
def get_pass_spp():
    return check_output("gpg --no-tty -dq /home/andrew/.passwd/awspost.gpg", shell=True).strip("\n")
