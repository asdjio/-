<template>
  <div>
    <UserCounterListCharts v-if="userList" :list="userList"></UserCounterListCharts>
    <TimeListCharts v-if="timeList" :list="timeList"></TimeListCharts>
  </div>
</template>

<script>
import request from "@/req";
import TimeListCharts from "@/components/TimeListCharts";

export default {
  name: "Statistics",
  components: {TimeListCharts},
  props: {},
  data() {
    return {
      userList: null,
      timeList:null
    }
  },
  methods: {},
  created() {
    request.get('/admin/getStatistics').then(res => {
      this.timeList=res.timeList
    })
  }
}
</script>

<style scoped>

</style>
