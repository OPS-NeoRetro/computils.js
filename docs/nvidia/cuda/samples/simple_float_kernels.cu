#include <cuda_runtime.h>
#include <stdio.h>

__global__ void gpuVectorAdd(float* x, float* y, float* z, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        z[threadID] = x[threadID] + y[threadID];
    }
}

__global__ void gpuVectorSub(float* x, float* y, float* z, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        z[threadID] = x[threadID] - y[threadID];
    }
}

__global__ void gpuVectorMul(float* x, float* y, float* z, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        z[threadID] = x[threadID] * y[threadID];
    }
}

__global__ void gpuVectorDiv(float* x, float* y, float* z, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        z[threadID] = x[threadID] / y[threadID];
    }
}

__global__ void gpuVectorMin(float* x, float* y, float* z, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        z[threadID] = min(x[threadID], y[threadID]);
    }
}

__global__ void gpuVectorMax(float* x, float* y, float* z, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        z[threadID] = max(x[threadID], y[threadID]);
    }
}

__global__ void gpuVectorClamp(float* x, float* y0, float* y1, float* z, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        z[threadID] = max(min(x[threadID], y0[threadID]), y1[threadID]);
    }
}

__global__ void gpuVectorSin(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = sinf(x[threadID]);
    }
}

__global__ void gpuVectorCos(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = cosf(x[threadID]);
    }
}

__global__ void gpuVectorTan(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = tanf(x[threadID]);
    }
}

__global__ void gpuVectorSinh(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = sinhf(x[threadID]);
    }
}

__global__ void gpuVectorCosh(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = coshf(x[threadID]);
    }
}

__global__ void gpuVectorTanh(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = tanhf(x[threadID]);
    }
}

__global__ void gpuVectorExp(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = expf(x[threadID]);
    }
}

__global__ void gpuVectorLog(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = logf(x[threadID]);
    }
}

__global__ void gpuVectorLog2(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = log2(x[threadID]);
    }
}

__global__ void gpuVectorLog10(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = log10(x[threadID]);
    }
}

__global__ void gpuVectorSqrt(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = sqrtf(x[threadID]);
    }
}

__global__ void gpuVectorRsqrt(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = rsqrtf(x[threadID]);
    }
}

__global__ void gpuVectorErf(float* x, float* y, unsigned int n) {
    int threadID = blockDim.x * blockIdx.x + threadIdx.x;
    if (threadID < n) {
        y[threadID] = erf(x[threadID]);
    }
}
