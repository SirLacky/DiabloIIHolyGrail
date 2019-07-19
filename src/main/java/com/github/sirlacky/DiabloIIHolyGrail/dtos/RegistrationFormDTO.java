package com.github.sirlacky.DiabloIIHolyGrail.dtos;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.validator.constraints.NotBlank;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class RegistrationFormDTO {
    @NotNull
    @Size(min = 3,max = 20)
    private String username;
    @NotNull
    @Size(min = 3,max = 20)
    private String password;
    @NotNull
    @Size(min = 3,max = 20)
    private String confirmedPassword;
}