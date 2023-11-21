let mensaje = document.querySelectorAll(".text-1");
const frasesMotivadoras = [
    "El éxito viene tras la persistencia y el esfuerzo constante.",
    "Cada día es una nueva oportunidad para alcanzar tus sueños.",
    "Confía en ti mismo, eres más fuerte de lo que crees.",
    "Las dificultades son oportunidades disfrazadas de lecciones valiosas.",
    "El único límite es el que te impones a ti mismo.",
    "La clave del progreso es mantenerse enfocado en tus metas.",
    "Cree en ti, eres capaz de lograr lo que te propongas.",
    "Acepta los desafíos, crece y conviértete en tu mejor versión.",
    "No te rindas, el camino hacia el éxito puede ser duro pero vale la pena.",
    "La motivación interior es el combustible que te llevará lejos."];
    
function obtenerFraseAleatoria() {
    const indiceAleatorio = Math.floor(Math.random() * frasesMotivadoras.length);
    return frasesMotivadoras[indiceAleatorio];
}
function escribirFraseEnHTML() {
    const fraseMotivadora = obtenerFraseAleatoria();
    const elementoHTML = document.getElementById("frase-motivadora");
    elementoHTML.textContent = fraseMotivadora;
}
escribirFraseEnHTML();