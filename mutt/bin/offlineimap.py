#! /usr/bin/env python2
from subprocess import check_output

def get_pass_gp():
    return check_output("gpg -dq ~/.passwd/gmail-pers.gpg", shell=True).strip("\n")
def get_pass_mtu():
    return check_output("gpg -dq ~/.passwd/mtu.gpg", shell=True).strip("\n")
def get_pass_work():
    return check_output("gpg -dq ~/.passwd/work.gpg", shell=True).strip("\n")
def get_pass_sp():
    return check_output("gpg -dq ~/.passwd/aws.gpg", shell=True).strip("\n")
def get_pass_spp():
    return check_output("gpg -dq ~/.passwd/awspost.gpg", shell=True).strip("\n")
