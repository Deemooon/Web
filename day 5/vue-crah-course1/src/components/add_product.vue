<template>
	<form @submit.prevent="onSubmit">

		<br id="inputs">
		<p align="center"><br><input placeholder="Ф.И.О" type="text" v-model="title"><br>
		<br><input hint="Дата выдачи зарплаты" type="date" v-model="date"><br>
		<br><input placeholder="Количество отработанных дней" step="1" min="1" max="99999" type="number" v-model="count"><br>
		<br><input placeholder="Размер заработной платы сотрудника" type="number" v-model="price"><br>


		<button type="submit">Добавить</button>

		<h3 v-if="notFilled">Вы должны заполнить все поля!</h3>

	</form>
</template>

<script>
export default {

	data() {
		return {
			title: '',
			date: '',
			count: '',
			price: '',
			pricewh: '',
			notFilled: false
		}
	},

	methods: {
		onSubmit() {
			if(this.title.trim() && this.date.trim() && this.count.trim() && this.price.trim()) {
				const newProduct = {
					id: Date.now(),
					title: this.title,
					date: this.date,
					count: this.count,
					price: this.price,
					pricewh: this.price-this.price*0.15
				}

				this.title = '';
				this.date = '';
				this.count = '';
				this.price = '';

				this.notFilled = false;

				this.$emit('addItem', newProduct)
			}
			else
				this.notFilled = true;}
	}

}
</script>

<style scoped>
	form {
		margin-top: 3rem;
		display: flex;
		flex-direction: column;
		justify-content: space-between;
	}

	input {
		width: 20%;
		margin-right: 1rem;
		padding-left: 0.5rem;
	
   
	}
	input[type='number'] {
    -moz-appearance:textfield;
	}

	input::-webkit-outer-spin-button,
	input::-webkit-inner-spin-button {
    -webkit-appearance: none;
	}

	button {
		display:block;
		margin-top: 1.5rem;
		width: 10rem;
		height: 2.5rem;
		background: -moz-linear-gradient(center top , #f9c037, #f8a13b);
		background: -webkit-gradient(linear, 0% 0%, 0% 100%, 
		from(#F9C037), to(#F8A13B));
		border-radius:10px;
		align-self: center;
		text-align:center; 
	}
	button:hover {
		background: -moz-linear-gradient(center top , #f8a13b, #f9c037);
		background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#f8a13b), to(#f9c037));
		cursor: pointer;
	}

	button:active {
background: -moz-linear-gradient(center top , #f9c037, #f8a13b);
background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#F9C037), to(#F8A13B));
padding-top: 22px;}

	#labels {
		display: flex;
		justify-content: space-between;
	}
</style>