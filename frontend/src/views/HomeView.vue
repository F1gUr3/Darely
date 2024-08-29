<script setup>
import {ref, reactive, onMounted} from 'vue';
import axios from 'axios';
import CategoryButtons from "../components/CategoryButtons.vue";
import QuestText from "../components/QuestText.vue";
import NextRequest from "../components/NextRequest.vue";

let questionObject = reactive({});

const buttonCategory = ref("family");
function getCategory(category){
    buttonCategory.value = category
    getQuestion();
    console.log(buttonCategory);
};
const questType = ref("T");

function getType(type){
    
    questType.value = (type == 0) ? "T" : "D";
    console.log(questType.value);
}


let loading = ref(true);

onMounted(async () => { 
    
    questionObject = await axios.get(`http://localhost:3000/api/questions/${ buttonCategory.value }/${questType.value}/random`);
    loading.value = false;

});

let getQuestion = async function () {
    loading.value = true;
    questionObject = await axios.get(`http://localhost:3000/api/questions/${ buttonCategory.value }/${questType.value}/random`);
    console.log(questionObject);
    loading.value = false;
}
</script>

<template>

<CategoryButtons @emitCategory="getCategory"  />
<div v-if="loading == true">
    <QuestText QuestText="Loading" />
</div>
<div v-else="loading == false">
    <QuestText :QuestText="questionObject.data.content" />

</div>
<NextRequest @TypeIndex="getType" @click="getQuestion" />
</template>
