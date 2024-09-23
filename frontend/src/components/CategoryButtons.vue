<script setup>
import {ref} from 'vue';
import CategorySelectorButton from "./subComponents/CategorySelectorButton.vue";



const categories = ["family", "friends", "couple"];
const buttonCategory = ref("Family");
function handleCategorySelection(category){
    buttonCategory.value = category;
}

const emit = defineEmits(["emitCategory"]);

function emitCategory(){
    emit("emitCategory", buttonCategory.value)
}

</script>

<template>
  <div class="CategoryButtons">
    <CategorySelectorButton
      v-for="(category, index) in categories"
      :key="index"
      :buttonName="category"
      @categorySelected="handleCategorySelection"
      @click="emitCategory"
      :isSelected="buttonCategory == category"
    />
  </div>
</template>

<style scoped>
.CategoryButtons {
  @apply flex flex-row justify-center text-center gap-4 md:gap-16 mt-8 cursor-pointer ;
}

</style>
