#!/usr/bin/python

import json

def print_dict(D, prefix=''):
    """Export JSON dictionaries to shell environment,
    building nested key path as name."""

    for k, v in D.iteritems():
        if isinstance(v, dict):
            recur_prefix = prefix + k + '_'
            print_dict(v, recur_prefix)
        else:
            print 'export {}{}="{}"'.format(prefix, k, v)

if __name__ == "__main__":
    with open("hi.json") as f:
        payload = json.load(f)
        print_dict(payload, '')
