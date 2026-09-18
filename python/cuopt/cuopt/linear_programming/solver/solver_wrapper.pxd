# SPDX-FileCopyrightText: Copyright (c) 2026, NVIDIA CORPORATION & AFFILIATES. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

from libcpp.memory cimport unique_ptr

from cuopt.linear_programming.solver.solver cimport (
    cpu_lp_solution_t,
    cpu_mip_solution_t,
)
cdef object build_solution_from_cpu(
    unique_ptr[cpu_lp_solution_t[int, double]] lp_solution,
    unique_ptr[cpu_mip_solution_t[int, double]] mip_solution,
    object variable_names)
