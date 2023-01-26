/*
  Warnings:

  - You are about to drop the `cars` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "cars";

-- CreateTable
CREATE TABLE "Cars" (
    "id" SERIAL NOT NULL,
    "model" TEXT NOT NULL,
    "licensePlate" TEXT NOT NULL,
    "year" TEXT NOT NULL,
    "color" TEXT NOT NULL,
    "createAt" TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "Cars_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Cars_licensePlate_key" ON "Cars"("licensePlate");
