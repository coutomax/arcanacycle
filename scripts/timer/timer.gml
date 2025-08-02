// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function timer(segundos) {
    
    var passos = segundos * room_speed; // Converte segundos para steps
    
    return {
        // Tempo total do timer (em steps)
        duration: passos,

        // Tempo atual restante (vai de duração até 0)
        current: 0,

        // Se o timer está ativo ou não
        active: false,

        // Inicia o timer
        start: function() {
            self.current = self.duration; // Reseta o tempo atual
            self.active = true;           // Ativa o timer
        },

        // Atualiza o timer (deve ser chamado a cada step)
        update: function() {
            if (self.active && self.current > 0) {
                self.current -= 1;        // Reduz 1 step a cada frame
                if (self.current <= 0) {
                    self.active = false; // Desativa quando chega a 0
                }
            }
        },

        // Retorna true se o tempo acabou
        is_done: function() {
            return !self.active;
        },

        // Reseta o timer manualmente
        reset: function() {
            self.current = 0;
            self.active = false;
        }
    }
}