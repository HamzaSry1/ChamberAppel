export const environment = {
    production: false,
    apiUrl: 'https://localhost:44342',
    pageSize: 10,
    token: (options: any) => Promise.resolve(localStorage.getItem('token') ?? ''),
};
