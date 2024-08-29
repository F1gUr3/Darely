<script setup>


let { QuestText } = defineProps({
    QuestText: String,
})

</script>

<template>
<div class="QuestTextContainer">
    <p class="QuestText"> {{ QuestText }} </p>
</div>
</template>

<style scoped>
.QuestText{
    @apply text-5xl flex justify-center items-center w-4/6 
}
.QuestTextContainer{
    @apply flex flex-row justify-center mt-24
}


</style>