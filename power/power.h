/*
 * Copyright (C) 2013 The Android Open Source Project
 * Copyright (C) 2017 Jesse Chan <cjx123@outlook.com>
 * Copyright (C) 2017 Lukas Berger <mail@lukasberger.at>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <hardware/hardware.h>
#include <hardware/power.h>

#ifndef EXYNOS5_POWER_HAL_H_INCLUDED
#define EXYNOS5_POWER_HAL_H_INCLUDED

/*
 * Macros
 */
#define POWERHAL_POSITIVE(n) ((n) < 0 ? 0 - (n) : (n))

#define POWERHAL_FORCE_DEBUG 0

#define PROFILE_POWER_SAVE 0
#define PROFILE_NORMAL 1
#define PROFILE_HIGH_PERFORMANCE 2

#define STATE_DISABLE 0
#define STATE_ENABLE 1

#define POWER_ENABLE_TOUCHKEY "/sys/class/input/input0/enabled"
#define POWER_ENABLE_TOUCHSCREEN "/sys/class/input/input1/enabled"
#define POWER_ENABLE_GPIO "/sys/class/input/input16/enabled"

#define POWER_MALI_GPU_DVFS "/sys/class/misc/mali0/device/dvfs"
#define POWER_MALI_GPU_DVFS_GOVERNOR "/sys/class/misc/mali0/device/dvfs_governor"
#define POWER_MALI_GPU_DVFS_MIN_LOCK "/sys/class/misc/mali0/device/dvfs_min_lock"
#define POWER_MALI_GPU_DVFS_MAX_LOCK "/sys/class/misc/mali0/device/dvfs_max_lock"

/***********************************
 * CPU-settings
 */
#define POWER_CPU_HOTPLUG "/sys/power/enable_dm_hotplug"

/***********************************
 * Interactive cpugov-settings
 */
// apollo
#define POWER_APOLLO_INTERACTIVE "/sys/devices/system/cpu/cpu0/cpufreq/intergalactic/"
#define POWER_APOLLO_INTERACTIVE_ABOVE_HISPEED_DELAY POWER_APOLLO_INTERACTIVE "above_hispeed_delay"
#define POWER_APOLLO_INTERACTIVE_BOOST POWER_APOLLO_INTERACTIVE "boost"
#define POWER_APOLLO_INTERACTIVE_BOOSTPULSE POWER_APOLLO_INTERACTIVE "boostpulse"
#define POWER_APOLLO_INTERACTIVE_BOOSTPULSE_DURATION POWER_APOLLO_INTERACTIVE "boostpulse_duration"
#define POWER_APOLLO_INTERACTIVE_CPU_UTIL POWER_APOLLO_INTERACTIVE "cpu_util"
#define POWER_APOLLO_INTERACTIVE_ENFORCED_MODE POWER_APOLLO_INTERACTIVE "enforced_mode"
#define POWER_APOLLO_INTERACTIVE_GO_HISPEED_LOAD POWER_APOLLO_INTERACTIVE "go_hispeed_load"
#define POWER_APOLLO_INTERACTIVE_HISPEED_FREQ POWER_APOLLO_INTERACTIVE "hispeed_freq"
#define POWER_APOLLO_INTERACTIVE_HOTPLUG_IN_LOAD POWER_APOLLO_INTERACTIVE "hotplug_in_load"
#define POWER_APOLLO_INTERACTIVE_HOTPLUG_MAX_IN_CORES POWER_APOLLO_INTERACTIVE "hotplug_max_in_cores"
#define POWER_APOLLO_INTERACTIVE_HOTPLUG_MIN_IN_CORES POWER_APOLLO_INTERACTIVE "hotplug_min_in_cores"
#define POWER_APOLLO_INTERACTIVE_HOTPLUG_MIN_PLUG_TIME POWER_APOLLO_INTERACTIVE "hotplug_min_plug_time"
#define POWER_APOLLO_INTERACTIVE_HOTPLUG_OUT_LOAD POWER_APOLLO_INTERACTIVE "hotplug_out_load"
#define POWER_APOLLO_INTERACTIVE_HOTPLUGGING POWER_APOLLO_INTERACTIVE "hotplugging"
#define POWER_APOLLO_INTERACTIVE_MIN_SAMPLE_TIME POWER_APOLLO_INTERACTIVE "min_sample_time"
#define POWER_APOLLO_INTERACTIVE_TARGET_LOADS POWER_APOLLO_INTERACTIVE "target_loads"
#define POWER_APOLLO_INTERACTIVE_TIMER_RATE POWER_APOLLO_INTERACTIVE "timer_rate"
#define POWER_APOLLO_INTERACTIVE_TIMER_SLACK POWER_APOLLO_INTERACTIVE "timer_slack"
// atlas
#define POWER_ATLAS_INTERACTIVE "/sys/devices/system/cpu/cpu4/cpufreq/intergalactic/"
#define POWER_ATLAS_INTERACTIVE_ABOVE_HISPEED_DELAY POWER_ATLAS_INTERACTIVE "above_hispeed_delay"
#define POWER_ATLAS_INTERACTIVE_BOOST POWER_ATLAS_INTERACTIVE "boost"
#define POWER_ATLAS_INTERACTIVE_BOOSTPULSE POWER_ATLAS_INTERACTIVE "boostpulse"
#define POWER_ATLAS_INTERACTIVE_BOOSTPULSE_DURATION POWER_ATLAS_INTERACTIVE "boostpulse_duration"
#define POWER_ATLAS_INTERACTIVE_CPU_UTIL POWER_ATLAS_INTERACTIVE "cpu_util"
#define POWER_ATLAS_INTERACTIVE_ENFORCED_MODE POWER_ATLAS_INTERACTIVE "enforced_mode"
#define POWER_ATLAS_INTERACTIVE_GO_HISPEED_LOAD POWER_ATLAS_INTERACTIVE "go_hispeed_load"
#define POWER_ATLAS_INTERACTIVE_HISPEED_FREQ POWER_ATLAS_INTERACTIVE "hispeed_freq"
#define POWER_ATLAS_INTERACTIVE_HOTPLUG_IN_LOAD POWER_ATLAS_INTERACTIVE "hotplug_in_load"
#define POWER_ATLAS_INTERACTIVE_HOTPLUG_MAX_IN_CORES POWER_ATLAS_INTERACTIVE "hotplug_max_in_cores"
#define POWER_ATLAS_INTERACTIVE_HOTPLUG_MIN_IN_CORES POWER_ATLAS_INTERACTIVE "hotplug_min_in_cores"
#define POWER_ATLAS_INTERACTIVE_HOTPLUG_MIN_PLUG_TIME POWER_ATLAS_INTERACTIVE "hotplug_min_plug_time"
#define POWER_ATLAS_INTERACTIVE_HOTPLUG_OUT_LOAD POWER_ATLAS_INTERACTIVE "hotplug_out_load"
#define POWER_ATLAS_INTERACTIVE_HOTPLUGGING POWER_ATLAS_INTERACTIVE "hotplugging"
#define POWER_ATLAS_INTERACTIVE_MIN_SAMPLE_TIME POWER_ATLAS_INTERACTIVE "min_sample_time"
#define POWER_ATLAS_INTERACTIVE_TARGET_LOADS POWER_ATLAS_INTERACTIVE "target_loads"
#define POWER_ATLAS_INTERACTIVE_TIMER_RATE POWER_ATLAS_INTERACTIVE "timer_rate"
#define POWER_ATLAS_INTERACTIVE_TIMER_SLACK POWER_ATLAS_INTERACTIVE "timer_slack"

/***********************************
 * Structures
 */
struct interactive_cpu_util {
    int avg;
    int cpu0;
    int cpu1;
    int cpu2;
    int cpu3;
};

/***********************************
 * Initializing
 */
static int powerhal_is_debugging();
static int power_open(const hw_module_t __unused * module, const char *name, hw_device_t **device);
static void power_init(struct power_module __unused * module);

/***********************************
 * Hinting
 */
static void power_hint(struct power_module *module, power_hint_t hint, void *data);
static void power_hint_boost_apply(int boost_duration, int enforce_duration);
static void power_hint_boost_apply_pulse(int cluster, int boost_duration, int enforce_duration);

/***********************************
 * Profiles
 */
static void power_set_profile_by_name(char *data);
static void power_set_profile(int profile);
static void power_apply_profile(struct power_profile data);

/***********************************
 * Inputs
 */
static void power_input_device_state(int state);
static void power_set_interactive(struct power_module __unused * module, int on);

/***********************************
 * Features
 */
static int power_get_feature(struct power_module *module __unused, feature_t feature);
static void power_set_feature(struct power_module *module, feature_t feature, int state);

/***********************************
 * Utilities
 */
static int file_write(const char *path, char *s);
static int file_read_int(const char *path, int *v);
static int file_exists(const char *path);
static int is_apollo_interactive();
static int is_atlas_interactive();
static int softkeys_active();
static int read_cpu_util(int cluster, struct interactive_cpu_util *cpuutil);
static int read_cpu_util_parse_int(char *str, int core, int *val);
static int recalculate_boostpulse_duration(int duration, struct interactive_cpu_util cpuutil);
static int correct_cpu_frequencies(int cluster, int freq);
static void power_pulse_set_timer(int cluster, int pulse_duration);
static int power_pulse_is_active(int cluster);

#endif // EXYNOS5_POWER_HAL_H_INCLUDED
