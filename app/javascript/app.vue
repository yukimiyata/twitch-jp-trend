<template>
    <v-app id="app">
        <header>
            <v-app-bar color='purple' dark app clipped-left>
                <v-app-bar-nav-icon @click="drawer=!drawer"></v-app-bar-nav-icon>
                <v-toolbar-title>TwitchJpTrend</v-toolbar-title>
                <v-spacer></v-spacer>
                <v-toolbar-items>
                    <v-btn text x-large>説明</v-btn>
                </v-toolbar-items>
            </v-app-bar>
        </header>

        <v-navigation-drawer app v-model="drawer" clipped height="500">
            <v-container>
                <v-list-item>
                    <v-list-item-content>
                        <v-list-item-title class='title grey--text text--darken-2'>データメニュー</v-list-item-title>
                    </v-list-item-content>
                </v-list-item>
                <v-divider></v-divider>

                <v-list dense nav>
                    <v-list-item v-for="nav_list in nav_lists" :key="nav_list.name">
                        <v-list-item-icon>
                            <v-icon>{{ nav_list.icon }}</v-icon>
                        </v-list-item-icon>
                        <v-list-item-content>
                            <v-list-item-title>{{ nav_list.name }}</v-list-item-title>
                        </v-list-item-content>
                    </v-list-item>
                </v-list>
            </v-container>
        </v-navigation-drawer>

        <v-main>
            
        </v-main>

        <footer id="footer">
            <v-footer color='purple' dark app>
                TwitchJpTrend
            </v-footer>
        </footer>
    </v-app>
</template>

<script>
    export default {
        data: function () {
            return {
                drawer: null,
                nav_lists: [
                    {name: '視聴者データ', icon: 'mdi-vuetify'},
                    {name: 'ゲームランキング', icon: 'mdi-cogs'},
                    {name: 'ユーザーデータ', icon: 'mdi-palette'}
                ]
            }
        }
    }
</script>

<style scoped>
    p {
        font-size: 2em;
        text-align: center;
    }

</style>
