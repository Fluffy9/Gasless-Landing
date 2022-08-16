<template>
    <div class="container">
        <b-jumbotron class="text-left" bg-variant="transparent" header="Pricing Plans" lead="Simple, transparent pricing. ">
            <small class="text-muted"> * 1 transaction estimated to be 0.0002 LYXe gas usage </small>
        </b-jumbotron>
        <b-row class="position-relative">
            <b-col v-for="plan in $store.state.plans" :key="plan.name">
                <b-card v-if="!plan['featured']" style="height: 300px; margin-top:50px" border-variant="dark">
                    <h2>${{plan["price"]}}/month</h2>
                    <h3>{{plan["name"]}} Plan</h3>
                    <p>{{plan["description"]}}</p>
                    <b-row>
                        <b-col lg="auto">✅</b-col>
                        <b-col class="text-left"><small>~{{plan.transactions}} transactions a month</small></b-col>
                    </b-row>
                    <br>
                    <b-button class="mt-auto" variant="dark" block :href="$store.state['appURL']">Get Started</b-button>
                </b-card>
                <b-card v-else style="height:350px;" border-variant="dark">
                    <template #header>
                        Featured
                    </template>
                    <h2>${{plan["price"]}}/month</h2>
                    <h3>{{plan["name"]}} Plan</h3>
                    <p>{{plan["description"]}}</p>
                    <b-row>
                        <b-col lg="auto">✅</b-col>
                        <b-col class="text-left"><small>~{{plan["transactions"]}} transactions a month</small></b-col>
                    </b-row>
                    <br>
                    <b-button class="mt-auto" variant="dark" block :href="$store.state['appURL']">Purchase</b-button>
                </b-card>
            </b-col>
        </b-row>
        <br>
    </div>
</template>
<style lang="scss" scoped>
    @import "~bootstrap/scss/bootstrap.scss";

    .card-body{
        @extend .d-flex;
        @extend .flex-column;
        border-radius: 1px
    }
    .btn, .card {
        border-radius: 1px
    }
</style>
