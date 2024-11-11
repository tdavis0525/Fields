protocol Observer {
    func onEvent(_ event: QuantumField.Event)
    // Could be more specific, e.g., onParticleCreated, onFieldUpdated
}
