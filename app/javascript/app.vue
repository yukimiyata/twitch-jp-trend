<template>
  <v-app id="app"> <!-- 追加 -->
    <v-app-bar color='purple' dark app>
      <v-toolbar-title>TwitchJpTrend</v-toolbar-title>
    </v-app-bar>
    <v-footer color='purple' dark app>
      TwitchJpTrend
    </v-footer>
  </v-app>
</template>

<script>
export default {
  data: function () {
    return {
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
