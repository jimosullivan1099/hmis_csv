view: duplicate_identifiers {
  derived_table: {
    sql:  (SELECT 'Client.csv' AS 'file', PersonalID AS 'file_id' FROM client GROUP BY PersonalID HAVING COUNT(PersonalID) > 1)
          UNION
          (SELECT 'CurrentLivingSituation.csv' AS 'file', CurrentLivingSitID AS 'file_id' FROM currentlivingsituation GROUP BY CurrentLivingSitID HAVING COUNT(CurrentLivingSitID) > 1)
          UNION
          (SELECT 'Enrollment.csv' AS 'file', EnrollmentID AS 'file_id' FROM enrollment GROUP BY EnrollmentID HAVING COUNT(EnrollmentID) > 1)
          UNION
          (SELECT 'Exit.csv' AS 'file', ExitID AS 'file_id' FROM `exit` GROUP BY ExitID HAVING COUNT(ExitID) > 1)
          UNION
          (SELECT 'Disabilities.csv' AS 'file', DisabilitiesID AS 'file_id' FROM disabilities GROUP BY DisabilitiesID HAVING COUNT(DisabilitiesID) > 1)
          UNION
          (SELECT 'EmploymentEducation.csv' AS 'file', EmploymentEducationID AS 'file_id' FROM employmenteducation GROUP BY EmploymentEducationID HAVING COUNT(EmploymentEducationID) > 1)
          UNION
          (SELECT 'EnrollmentCoC.csv' AS 'file', EnrollmentCoCID AS 'file_id' FROM enrollmentcoc GROUP BY EnrollmentCoCID HAVING COUNT(EnrollmentCoCID) > 1)
          UNION
          (SELECT 'IncomeBenefits.csv' AS 'file', IncomeBenefitsID AS 'file_id' FROM incomebenefits GROUP BY IncomeBenefitsID HAVING COUNT(IncomeBenefitsID) > 1)
          UNION
          (SELECT 'HealthAndDV.csv' AS 'file', HealthAndDVID AS 'file_id' FROM healthanddv GROUP BY HealthAndDVID HAVING COUNT(HealthAndDVID) > 1)
          UNION
          (SELECT 'Services.csv' AS 'file', ServicesID AS 'file_id' FROM services GROUP BY ServicesID HAVING COUNT(ServicesID) > 1)
      ;;
  }

  dimension: file {
    type: string
    sql: ${TABLE}.file ;;
  }

  dimension: file_id {
    type: string
    label: "File ID"
    sql: ${TABLE}.file ;;
  }

  measure: count {
    type: count_distinct
    sql: ${file_id} ;;
  }
}
