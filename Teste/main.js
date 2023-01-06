// Realize uma requisição HTTP para o seu código do lado do servidor




fetch("dados.json")
  .then((response) => response.json())
  .then((roteiro) => {
    // Exiba o roteiro na página
    document.getElementById("titulo").innerHTML = roteiro.titulo;
    document.getElementById("introducao").innerHTML = roteiro.introducao;
    document.getElementById("fatos-curiosos").innerHTML = roteiro.fatosCuriosos;
    document.getElementById("conclusao").innerHTML = roteiro.conclusao;
  });

const openai = require("openai");
const random = require("random");

// Configure a chave de API do OpenAI
openai.apiKey = "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";

async function generateScript(prompt) {
  const response = await openai.completions.create(
    "text-davinci-002",
    {
      prompt,
      max_tokens: 1024,
      n: 1,
      temperature: 0.5,
    }
  );

  return response.choices[0].text.trim();
}

async function main() {
  // Gere uma sugestão de tema para um vídeo
  let topicPrompt = "Gere uma sugestão de tema para um vídeo sobre fatos curiosos";
  let topic = await generateScript(topicPrompt);

  // Se não conseguir gerar um tema usando o chatGPT, escolha um tema aleatoriamente
  if (!topic) {
    // Defina uma lista de temas possíveis
    let topics = [
      "os 10 maiores animais e fatos curiosos sobre eles",
      "os 10 maiores monumentos do mundo e fatos curiosos sobre eles",
      "os 10 maiores países do mundo e fatos curiosos sobre eles",
      "os 10 maiores mares do mundo e fatos curiosos sobre eles",
      "os 10 maiores rios do mundo e fatos curiosos sobre eles",
    ];

    // Escolha um tema aleatoriamente
    topic = random.choice(topics);
  }

  console.log(`Tema escolhido: ${topic}`);

  // Gere um título para o vídeo
  let titlePrompt = `Gere um título para um vídeo sobre ${topic}`;
  let title = await generateScript(titlePrompt);
  console.log(`Título do vídeo: ${title}`);

  // Gere uma introdução para o vídeo
  let introPrompt = `Gere uma introdução para um vídeo sobre ${topic}`;
  let intro = await generateScript(introPrompt);
  console.log(`Introdução: ${intro}`);

  // Gere uma lista de fatos curiosos sobre o tema escolhido
  let factsPrompt = `Gere uma lista de 10 fatos curiosos sobre o tema escolhido: ${topic}`;
  let facts = await generateScript(factsPrompt);
  console.log(`Fatos curiosos: ${facts}`);


  // Gere uma conclusão para o vídeo
  let conclusionPrompt = `Gere uma conclusão para um vídeo sobre ${topic}`;
  let conclusion = await generateScript(conclusionPrompt);
  console.log(`Conclusão: ${conclusion}`);
}

main();