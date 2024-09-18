export const environment = {
    production: false,
    apiUrl: 'https://localhost:7292',
    pageSize: 10,
    token: (options: any) => Promise.resolve(localStorage.getItem('token') ?? ''),
};
