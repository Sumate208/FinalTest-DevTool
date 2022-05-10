describe('Test', () => {
    beforeEach(() => {
        cy.visit('/')
    })
    it("Check Title", () => {
        // test
        cy.contains('ระบบรับสมัครนักศึกญาระดับปริญญาโท').should('exist')
    })
    it("Check Title", () => {
        // test
        cy.contains('สถาบันเทคโนโลยีพระจอมเกล้าเจ้าคุณทหารลาดกระบัง').should('exist')
    })
})