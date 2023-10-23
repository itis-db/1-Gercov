-- CreateTable
CREATE TABLE "activity" (
    "activityid" INTEGER NOT NULL,
    "parentid" INTEGER,
    "activitytypeid" INTEGER,
    "name" VARCHAR(255),
    "areaid" INTEGER,

    CONSTRAINT "activity_pkey" PRIMARY KEY ("activityid")
);

-- CreateTable
CREATE TABLE "activitytype" (
    "activitytypeid" INTEGER NOT NULL,
    "name" VARCHAR(255),

    CONSTRAINT "activitytype_pkey" PRIMARY KEY ("activitytypeid")
);

-- CreateTable
CREATE TABLE "contract" (
    "activityid" INTEGER NOT NULL,
    "areaid" INTEGER,

    CONSTRAINT "contract_pkey" PRIMARY KEY ("activityid")
);

-- CreateTable
CREATE TABLE "point" (
    "activityid" INTEGER NOT NULL,

    CONSTRAINT "point_pkey" PRIMARY KEY ("activityid")
);

-- CreateTable
CREATE TABLE "program" (
    "activityid" INTEGER NOT NULL,

    CONSTRAINT "program_pkey" PRIMARY KEY ("activityid")
);

-- CreateTable
CREATE TABLE "project" (
    "activityid" INTEGER NOT NULL,

    CONSTRAINT "project_pkey" PRIMARY KEY ("activityid")
);

-- CreateTable
CREATE TABLE "subprogram" (
    "activityid" INTEGER NOT NULL,

    CONSTRAINT "subprogram_pkey" PRIMARY KEY ("activityid")
);

-- AddForeignKey
ALTER TABLE "activity" ADD CONSTRAINT "activity_activitytypeid_fkey" FOREIGN KEY ("activitytypeid") REFERENCES "activitytype"("activitytypeid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "contract" ADD CONSTRAINT "contract_activityid_fkey" FOREIGN KEY ("activityid") REFERENCES "activity"("activityid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "point" ADD CONSTRAINT "point_activityid_fkey" FOREIGN KEY ("activityid") REFERENCES "activity"("activityid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "program" ADD CONSTRAINT "program_activityid_fkey" FOREIGN KEY ("activityid") REFERENCES "activity"("activityid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "project" ADD CONSTRAINT "project_activityid_fkey" FOREIGN KEY ("activityid") REFERENCES "activity"("activityid") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE "subprogram" ADD CONSTRAINT "subprogram_activityid_fkey" FOREIGN KEY ("activityid") REFERENCES "activity"("activityid") ON DELETE NO ACTION ON UPDATE NO ACTION;
