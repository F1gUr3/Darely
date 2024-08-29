<script setup>

let {name} = defineProps({
    name: String,
})

</script>

<template>
<div class="NextButton">
    <p>{{ name }}</p>
</div>
</template>

<style scoped>
.NextButton{
    @apply bg-white rounded-xl   duration-300 cursor-pointer;
    p{
        color: black !important ;
        @apply text-3xl py-4 w-full px-16 select-none;
    }
    transition: box-shadow 300ms ease-in-out;
}
.NextButton:hover{
    box-shadow: 0px 0px 20px 8px rgba(255, 255, 255, 0.10);
    
}
</style>