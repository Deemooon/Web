<template>
	<li>
		<span>
			<strong>Порядковый номер: {{ index + 1 }}</strong>
				<p>Ф.И.О: {{ newWorker.title }}</p>
				 <p>Дата: {{ newWorker.date }}</p>
				  <p>Количество отработанных дней: {{ newWorker.count }}</p>
				   <p>Размер заработной платы сотрудника без налогов: {{ newWorker.price }} </p>
				   <p>Размер заработной платы сотрудника с налогами: {{ newWorker.pricewh }} </p>
		</span>
		<button class="btn_remove" v-on:click="$emit('remove-item', newWorker)">Удалить</button>
	</li>
</template>

<script>
export default {

	props: {
		newWorker: {
			type: Object,
			required: true
		},

		index: Number
	}
}
</script>

<style scoped>
	li {
		border: 1px solid gray;
		display: flex;
		justify-content: center;
		padding: .5rem 2rem;
		margin-bottom: 1rem;
	}

	strong {
		padding-right: 0.5rem;
	}

	.btn_remove {
		display:block;
		background: white;
		background: -moz-linear-gradient(top, #057cc0, #249ee4);
		background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#057cc0), to(#249ee4));
		border-radius:10px;
		font-weight: bold;
		max-height: 1.5rem;
		cursor: pointer;
		width: 5rem;
	}
	.btn_remove:hover {
		background: -moz-linear-gradient(top, #249ee4, #057cc0);
		background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#249ee4), to(#057cc0));
	}
	.btn_remove:active {
		background: -moz-linear-gradient(top, #057cc0, #249ee4);
		background: -webkit-gradient(linear, 0% 0%, 0% 100%,from(#057cc0), to(#249ee4));
		padding-top: 22px;
	}

</style>