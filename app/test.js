const request = require('supertest');
const app = require('./server');

describe('GET /health', () => {
  it('devrait retourner le statut 200 OK', async () => {
    const res = await request(app).get('/health');
    if (res.statusCode !== 200) throw new Error('Health check failed');
  });
});