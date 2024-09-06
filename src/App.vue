<template>
  <v-app>
    <v-main>
      <router-view />
    </v-main>
  </v-app>
</template>

<script>
export default {
  mounted() {
    document.title = "XIANG-LONG,DING";
  },
};
</script>
