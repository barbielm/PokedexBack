import Joi from "joi";

const signUpSchema = Joi.object({
    email: Joi.string().email({tlds:{allow:false}}).required(),
    password: Joi.string().required(),
    confirmPassword: Joi.ref('password')
})

export default signUpSchema;