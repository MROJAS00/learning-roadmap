#!/bin/bash

# Total CPU Usage
cpu_usage() {
    echo "\033[1;32m[CPU USAGE]\033[0m"
    top -l 1 | grep "CPU usage" | awk '{print $3 " " $4 " " $5 " " $6 " " $7}'
    echo ""
}

# Total Memory Usage
memory_usage() {
    echo "\033[1;34m[MEMORY USAGE]\033[0m"
    top -l 1 | grep "PhysMem" | awk '{print $2, $3, $4, $5}'
    echo ""
}

# Total disk usage

disk_usage() {
    echo "\033[1;35m[DISK USAGE]\033[0m"
    df -h
    echo ""
}

# Top 5 processes consuming CPU
top_cpu() {
    echo "\033[1;33m[TOP 5 PROCESSES BY CPU USAGE]\033[0m"
    ps -arcwwwxo "command %cpu" | head -n 6
    echo ""
}

# Top 5 processes consuming Memory
top_memory() {
    echo "\033[1;36m[TOP 5 PROCESSES BY MEMORY USAGE]\033[0m"
    ps -arcwwwxo "command %mem" | head -n 6
    echo ""
}

# Main function
main() {
  cpu_usage
  memory_usage
  disk_usage
  top_cpu
  top_memory
}

# execute main function
main