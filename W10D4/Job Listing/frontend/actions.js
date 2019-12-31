export const SWITCH_LOCATION = "SWITCH_LOCATION";

export const selectLocation = (city, jobs) => ({
    type: SWITCH_LOCATION,
    city: city,
    jobs: jobs
});

window.selectLocation = selectLocation

