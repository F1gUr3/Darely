<script setup></script>

<template>
  <div class="navigation" >
    <h1>Darely</h1>
  </div>
  <slot>

  </slot>

</template>

<style scoped>
.navigation {
  height: 100px;
  @apply w-full ;
  h1{
    text-align: center;
    font-family: "Questrial", sans-serif !important;
    @apply text-7xl p-4 mx-4
  }
}
footer {
  @apply w-full h-28 bg-gray-950;
}
</style>
