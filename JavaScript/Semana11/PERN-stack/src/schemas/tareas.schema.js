import {z} from 'zod';

export const createTareasSchema = z.object({
    titulo: z.string({
        required_error: "El titulo es requerido",
        invalid_type_error: "El titulo debe ser un string"
    }).min(1,{
        message: "El titulo debe tener al menos 1 caracter"
    }).max(255,{
        message: "El titulo debe tener como máximo 255 carácteres"
    }),
    descripcion: z.string({
        required_error: "La descripción es requerido",
        invalid_type_error: "La descripción debe ser un string"
    }).min(0,{
        message: "La descripción debe tener al menos 1 caracter"
    }).max(255,{
        message: "La descripción debe tener como máximo 255 carácteres"
    }).optional(), 
});

export const updateTareasSchema = z.object({
    titulo: z.string({
        required_error: "El titulo es requerido",
        invalid_type_error: "El titulo debe ser un string"
    }).min(1,{
        message: "El titulo debe tener al menos 1 caracter"
    }).max(255,{
        message: "El titulo debe tener como máximo 255 carácteres"
    }).optional(),
    descripcion: z.string({
        required_error: "La descripción es requerido",
        invalid_type_error: "La descripción debe ser un string"
    }).min(0,{
        message: "La descripción debe tener al menos 1 caracter"
    }).max(255,{
        message: "La descripción debe tener como máximo 255 carácteres"
    }).optional(), 
});
