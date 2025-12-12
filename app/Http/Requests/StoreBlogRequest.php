<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StoreBlogRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return auth()->check() && auth()->user()->is_admin;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'title' => ['required', 'string', 'max:255'],
            'content' => ['required', 'string'],
            // الصورة مطلوبة عند الإضافة فقط
            'image' => ['required', 'image', 'max:2048'],
            'categories' => ['nullable', 'array'],
            'categories.*' => ['integer', 'exists:categories,id'],
        ];
    }
    public function messages(): array
    {
        return [
            'title.required' => 'العنوان مطلوب.',
            'content.required' => 'المحتوى مطلوب.',
            'image.required' => 'الصورة مطلوبة عند الإضافة.',
        ];
    }
}
