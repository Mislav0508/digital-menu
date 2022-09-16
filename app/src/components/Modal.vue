<template>
  <div class="text-center">
    <v-dialog
    v-model="dataIsVisible"
    width="500"
    persistent
    >

      <v-card>
        <slot name="header"></slot>

        <slot name="body"></slot>

        <v-divider></v-divider>

        <v-card-actions>

            <v-spacer></v-spacer>

            <v-btn color="primary" text @click="emitCancel" >
                <slot name="cancel-button"></slot>
            </v-btn>

            <v-btn color="error" text @click="emitConfirm">
              <slot name="confirm-button"></slot>
            </v-btn>

        </v-card-actions>

      </v-card>
    </v-dialog>
  </div>
</template>

<script>
export default {
  props: {
    isVisible: { type: Boolean, default: false }
  },
  data () {
    return {
      dataIsVisible: false
    }
  },
  computed: {
    computedIsVisible: {
      get () {
        return this.isVisible
      },
      set (newValue) {
        console.log(newValue)
        this.dataIsVisible = newValue
      }
    }
  },
  methods: {
    emitCancel () {
      this.$emit('cancel')
    },
    emitConfirm () {
      this.$emit('confirm')
    }
  }
}
</script>