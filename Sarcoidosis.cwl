cwlVersion: v1.0
steps:
  read-potential-cases-fhir:
    run: read-potential-cases-fhir.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  sarcoidosis---secondary:
    run: sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-fhir/output
  granulomatous-sarcoidosis---secondary:
    run: granulomatous-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: sarcoidosis---secondary/output
  cerebral-sarcoidosis---secondary:
    run: cerebral-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: granulomatous-sarcoidosis---secondary/output
  nodular-sarcoidosis---secondary:
    run: nodular-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: cerebral-sarcoidosis---secondary/output
  papular-sarcoidosis---secondary:
    run: papular-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: nodular-sarcoidosis---secondary/output
  acute-sarcoidosis---secondary:
    run: acute-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: papular-sarcoidosis---secondary/output
  chronic-sarcoidosis---secondary:
    run: chronic-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: acute-sarcoidosis---secondary/output
  lichenoid-sarcoidosis---secondary:
    run: lichenoid-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: chronic-sarcoidosis---secondary/output
  neurosarcoidosis---secondary:
    run: neurosarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: lichenoid-sarcoidosis---secondary/output
  sarcoidosis-nasal---secondary:
    run: sarcoidosis-nasal---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: neurosarcoidosis---secondary/output
  laryngeal-sarcoidosis---secondary:
    run: laryngeal-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: sarcoidosis-nasal---secondary/output
  splenic-sarcoidosis---secondary:
    run: splenic-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: laryngeal-sarcoidosis---secondary/output
  darierroussy-sarcoidosis---secondary:
    run: darierroussy-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: splenic-sarcoidosis---secondary/output
  pulmonary-sarcoidosis---secondary:
    run: pulmonary-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: darierroussy-sarcoidosis---secondary/output
  sarcoidosis-lymph---secondary:
    run: sarcoidosis-lymph---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: pulmonary-sarcoidosis---secondary/output
  neuropathy-sarcoidosis---secondary:
    run: neuropathy-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: sarcoidosis-lymph---secondary/output
  myopathy-sarcoidosis---secondary:
    run: myopathy-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: neuropathy-sarcoidosis---secondary/output
  sarcoidosis-muscle---secondary:
    run: sarcoidosis-muscle---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: myopathy-sarcoidosis---secondary/output
  sarcoidosis-stage---secondary:
    run: sarcoidosis-stage---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: sarcoidosis-muscle---secondary/output
  hilar-sarcoidosis---secondary:
    run: hilar-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: sarcoidosis-stage---secondary/output
  sarcoidosis-calcification---secondary:
    run: sarcoidosis-calcification---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: hilar-sarcoidosis---secondary/output
  mediastinal-sarcoidosis---secondary:
    run: mediastinal-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: sarcoidosis-calcification---secondary/output
  orofacial-sarcoidosis---secondary:
    run: orofacial-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: mediastinal-sarcoidosis---secondary/output
  ocular-sarcoidosis---secondary:
    run: ocular-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: orofacial-sarcoidosis---secondary/output
  nasopharyngeal-sarcoidosis---secondary:
    run: nasopharyngeal-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: ocular-sarcoidosis---secondary/output
  endobronchial-sarcoidosis---secondary:
    run: endobronchial-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: nasopharyngeal-sarcoidosis---secondary/output
  sarcoidosis-dactylitis---secondary:
    run: sarcoidosis-dactylitis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: endobronchial-sarcoidosis---secondary/output
  sarcoidosis-gland---secondary:
    run: sarcoidosis-gland---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: sarcoidosis-dactylitis---secondary/output
  sarcoidosis-polymyositis---secondary:
    run: sarcoidosis-polymyositis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: sarcoidosis-gland---secondary/output
  sarcoidosis-turbinates---secondary:
    run: sarcoidosis-turbinates---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: sarcoidosis-polymyositis---secondary/output
  plaque-sarcoidosis---secondary:
    run: plaque-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: sarcoidosis-turbinates---secondary/output
  cutaneous-sarcoidosis---secondary:
    run: cutaneous-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: plaque-sarcoidosis---secondary/output
  sarcoidosis-heerfordt---secondary:
    run: sarcoidosis-heerfordt---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: cutaneous-sarcoidosis---secondary/output
  sarcoidosis-pernio---secondary:
    run: sarcoidosis-pernio---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: sarcoidosis-heerfordt---secondary/output
  angiolupoid-sarcoidosis---secondary:
    run: angiolupoid-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: sarcoidosis-pernio---secondary/output
  anular-sarcoidosis---secondary:
    run: anular-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: angiolupoid-sarcoidosis---secondary/output
  hypomelanotic-sarcoidosis---secondary:
    run: hypomelanotic-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: anular-sarcoidosis---secondary/output
  nephropathy-sarcoidosis---secondary:
    run: nephropathy-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: hypomelanotic-sarcoidosis---secondary/output
  sarcoidosis-ichthyosiform---secondary:
    run: sarcoidosis-ichthyosiform---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: nephropathy-sarcoidosis---secondary/output
  ulcerative-sarcoidosis---secondary:
    run: ulcerative-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: sarcoidosis-ichthyosiform---secondary/output
  atrophic-sarcoidosis---secondary:
    run: atrophic-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: ulcerative-sarcoidosis---secondary/output
  verrucous-sarcoidosis---secondary:
    run: verrucous-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: atrophic-sarcoidosis---secondary/output
  sarcoidosis-glomerulonephritis---secondary:
    run: sarcoidosis-glomerulonephritis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: verrucous-sarcoidosis---secondary/output
  erythrodermic-sarcoidosis---secondary:
    run: erythrodermic-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: sarcoidosis-glomerulonephritis---secondary/output
  sarcoidosis-cardiac---secondary:
    run: sarcoidosis-cardiac---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: erythrodermic-sarcoidosis---secondary/output
  eyelid-sarcoidosis---secondary:
    run: eyelid-sarcoidosis---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: sarcoidosis-cardiac---secondary/output
  sarcoidosis-hypertension---secondary:
    run: sarcoidosis-hypertension---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: eyelid-sarcoidosis---secondary/output
  sarcoidosis-cavity---secondary:
    run: sarcoidosis-cavity---secondary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: sarcoidosis-hypertension---secondary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: sarcoidosis-cavity---secondary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
