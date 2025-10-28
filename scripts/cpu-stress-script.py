def cpu_stress(duration):
    import time
    start_time = time.time()
    while time.time() - start_time < duration:
        pass  # Busy-wait to stress the CPU

if __name__ == "__main__":
    cpu_stress_duration = 300  # Run CPU stress for 5 minutes
    cpu_stress(cpu_stress_duration)