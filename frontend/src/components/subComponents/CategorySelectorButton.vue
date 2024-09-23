<script setup>
 

const { buttonName, isSelected } = defineProps({
    buttonName: String,
    isSelected: Boolean,


});

const emit = defineEmits(['categorySelected']);

let ClickCategory = function(){
    emit('categorySelected', buttonName);
}

</script>

<template>
<div :class="{CategoryButton: true, selected: isSelected}" @click="ClickCategory" >
    <p>{{ buttonName }}    </p>
</div>
</template>

<style scoped>

.CategoryButton{
    @apply bg-[#ff98e99b] px-2 py-4  md:p-4 rounded-xl text-xl md:text-2xl backdrop-blur-md select-none ;
}
.selected{
    @apply bg-white;
    p{
        color: black !important;

    }
}
</style>