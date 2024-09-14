export const environment = {
    production: false,
    apiUrl: 'https://localhost:44332',
    pageSize: 10,
    token: (options: any) => Promise.resolve(localStorage.getItem('token') ?? ''),
};
