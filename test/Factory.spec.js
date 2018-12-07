const Factory = artifacts.require('Factory')

contract('Factory', (accounts) => {
  let instance

  beforeEach('setup', async () => {
    instance = await Factory.new()
  })

  describe('test deploy', () => {
    it('should deploy', async () => {
      // TODO
      assert.ok(true)
    })
  })
})
