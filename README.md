# What

Generate edid file for sepcified resolution.

Based on cvt and [akatrevorjay/edid-generator](https://github.com/akatrevorjay/edid-generator).

# Usage

```
docker build -t edid-gen:v1
# replace 1920 1080 with the resolution you need
# edid goes to stdout
docker run edid-gen:v1 1920 1080
```
