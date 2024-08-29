<script setup>

import NextButton from './subComponents/NextButton.vue';

let buttons = ["Truth", "Dare"];

let emit = defineEmits(["typeIndex"]);

let emitType = function(index){
    emit("TypeIndex", index)
}

</script>

<template>
<div class="buttons">
<NextButton v-for="(name, index) in buttons" :name="name" :key="index" @click="emitType(index)" />
</div>
</template>

<style scoped>
.buttons{
    @apply flex flex-row justify-around gap-4
}
</style>