<template>
  <div class="bg">
    <v-row class="image-container">
      <v-col>
        <v-img src="@/assets/profile.jpeg" width="100%" height="100%"></v-img>
      </v-col>
      <v-col>
        <div class="text-grey-lighten-4">
          <p class="text-h2 pb-12">XIANG LONG DING</p>
          <div>
            <v-icon @click="copyToClipboard">mdi-email-outline</v-icon>
            <span v-if="showMessage" class="pl-2 green-lighten-5">Copied!</span>
          </div>
          <p>In Database System Lab</p>
          <p>At National Sun Yat-Sen University</p>
        </div>
      </v-col>
    </v-row>
  </div>
</template>

<script lang="ts" setup>
import { ref } from "vue";

const showMessage = ref(false);

const copyToClipboard = async () => {
  try {
    await navigator.clipboard.writeText("m133040006@gmail.com");
    showMessage.value = true;
    setTimeout(() => {
      showMessage.value = false;
    }, 2000);
  } catch (err) {
    console.error("Failed to copy text: ", err);
  }
};
</script>

<style scoped>
.bg {
  background: linear-gradient(rgba(60, 60, 60, 0.5), rgba(91, 91, 91, 0.538)),
    url("../assets/bg-plane.jpeg");
  background-size: cover;
  height: 100vh;
  position: relative;
}

.image-container {
  position: absolute;
  top: 20%;
  left: 40%;
}
</style>
