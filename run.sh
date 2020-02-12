#!/bin/sh

cd nested-working
echo nested-working
cue dump ./...

echo nested-broken
cd ../nested-broken
cue dump ./...
