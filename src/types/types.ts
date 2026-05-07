interface LoginInput {
    password: string
    email: string
}

interface LoginInputError {
    password?: string
    email?: string
}

interface UserData {
    id: string | number
    name: string
    password: string
    email: string
    active: boolean
    isDealer: boolean
    isAdmin: boolean
    lastLogin: Date
    createdAt: Date
}

interface TokenData {
    email: string
    userId: string | number
    name: string
    tokenType: string
}

export type { LoginInput, LoginInputError, UserData, TokenData };