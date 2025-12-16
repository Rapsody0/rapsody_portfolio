/// Descrizioni per ogni StatCard, indicizzate per chiave costante.

class SkillCardKeys {
  static const flutter = 'flutter';
  static const riverpod = 'riverpod';
  static const ai = 'ai';
  static const uiux = 'uiux';
}

const Map<String, String> statCardDescriptions = {
  SkillCardKeys.flutter:
      'Sviluppo multipiattaforma con Flutter e Dart. App moderne, performanti e scalabili per mobile, web e desktop.',
  SkillCardKeys.riverpod:
      'Gestione stato avanzata con Riverpod e backend su Firebase. Architetture reattive e scalabili.',
  SkillCardKeys.ai:
      'Utilizzo critico di AI e strumenti come Copilot per accelerare sviluppo e qualità del codice.',
  SkillCardKeys.uiux:
      'Design UI/UX curato, attenzione all’architettura e all’esperienza utente su ogni piattaforma.',
};
