import time
import threading

def cpu_load(duration_sec):
    end_time = time.time() + duration_sec
    while time.time() < end_time:
        x = 0
        while x < 1_000_000:
            x += 1

def run_cpu_stress(threads=2, minutes=15):
    duration_sec = minutes * 60
    thread_list = []
    for _ in range(threads):
        t = threading.Thread(target=cpu_load, args=(duration_sec,))
        t.start()
        thread_list.append(t)
    for t in thread_list:
        t.join()

if __name__ == "__main__":
   #Adjust thread count as needed depending on your core count for ~25% CPU usage.
   run_cpu_stress(threads=2, minutes=15)
