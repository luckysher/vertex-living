import { User } from "../models/schema"

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
    lastLogin: Date | null
    createdAt: Date
}

interface TokenData {
    email: string
    userId: string | number
    name: string
    tokenType: string
}


interface DealerUserRegInput {
    name: string
    password: string
    email: string
    address: string
    profile_pic: string
}

interface PropertyTypeData {
    name: string
}

interface PropertyTypeDataError {
    name?: string
}

interface DealerUserRegInputError {
    name?: string
    password?: string
    email?: string
    address?: string
    profile_pic?: string
}

interface DealerData {
    id: number
    userId: number | null
    address: string
    profile_pic: string
    approved: boolean
    createdAt: Date
}

interface IFile {
    fieldname: string;
    originalname: string;
    encoding: string;
    mimetype: string;
    buffer: Buffer;
    size: number;
  }

export type { LoginInput, LoginInputError, UserData, TokenData, DealerUserRegInput, DealerUserRegInputError, IFile, DealerData, PropertyTypeData, PropertyTypeDataError };