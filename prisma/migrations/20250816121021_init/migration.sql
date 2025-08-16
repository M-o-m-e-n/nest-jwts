-- CreateTable
CREATE TABLE "public/"."User" (
    "id" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,
    "name" TEXT,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,
    "accessToken" TEXT,
    "refreshToken" TEXT,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "User_email_key" ON "public/"."User"("email");

-- CreateIndex
CREATE UNIQUE INDEX "User_accessToken_key" ON "public/"."User"("accessToken");

-- CreateIndex
CREATE UNIQUE INDEX "User_refreshToken_key" ON "public/"."User"("refreshToken");
