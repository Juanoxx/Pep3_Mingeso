<template>
<h3>Users:</h3>
</template>
<script>    
import axios from 'axios';
export default {
name: 'Users',
data() {
return {
users: null,
};
},
created: function() {
axios
.get('https://jsonplaceholder.typicode.com/users')
.then(res => {
this.users = res.data;
})
}
}
</script>
<style>
h3 {
margin>-bottom:5>%;
}
</style>